import duckdb
import os
import glob

# Melhores Práticas: Caminhos dinâmicos
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DB_PATH = os.path.join(BASE_DIR, 'data', 'dados.duckdb')
DATA_FOLDER = os.path.join(BASE_DIR, 'data')

def carregar_olist():
    print(f"🚀 Iniciando conexão com: {DB_PATH}")
    con = duckdb.connect(DB_PATH)
    
    try:
        # Criando o esquema 'raw' conforme planejado no AAR [cite: 17, 31]
        con.execute("CREATE SCHEMA IF NOT EXISTS raw;")
        
        # Busca todos os arquivos .csv na pasta data
        arquivos_csv = glob.glob(os.path.join(DATA_FOLDER, "*.csv"))
        
        if not arquivos_csv:
            print("⚠️ Nenhum arquivo CSV encontrado na pasta data!")
            return

        for arquivo in arquivos_csv:
            # Extrai o nome do arquivo para usar como nome da tabela (ex: olist_orders_dataset)
            nome_tabela = os.path.basename(arquivo).replace(".csv", "")
            
            print(f"📥 Carregando {nome_tabela}...")
            
            # Ingestão direta via DuckDB (Alta performance) [cite: 14]
            con.execute(f"""
                CREATE OR REPLACE TABLE raw.{nome_tabela} AS 
                SELECT * FROM read_csv_auto('{arquivo}');
            """)
            
        print("\n✅ Sucesso! Todas as tabelas foram carregadas no esquema 'raw'.")
        
    except Exception as e:
        print(f"❌ Erro durante a ingestão: {e}")
    finally:
        con.close()

if __name__ == "__main__":
    carregar_olist()