namespace BD_Interface
{
    partial class Admin_Historico_de_Trabalhos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button7 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Maquina = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Empresa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.localizacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_Inicio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_Fim = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nr_horas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Custo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // button7
            // 
            this.button7.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button7.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.button7.Location = new System.Drawing.Point(10, 505);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(96, 32);
            this.button7.TabIndex = 146;
            this.button7.Text = "Voltar";
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Maquina,
            this.Tipo,
            this.Empresa,
            this.localizacao,
            this.Estado,
            this.Data_Inicio,
            this.Data_Fim,
            this.nr_horas,
            this.Custo});
            this.dataGridView1.Location = new System.Drawing.Point(-4, 0);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(949, 499);
            this.dataGridView1.TabIndex = 148;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // Maquina
            // 
            this.Maquina.HeaderText = "Maquina";
            this.Maquina.Name = "Maquina";
            // 
            // Tipo
            // 
            this.Tipo.HeaderText = "Tipo";
            this.Tipo.MinimumWidth = 6;
            this.Tipo.Name = "Tipo";
            this.Tipo.Width = 125;
            // 
            // Empresa
            // 
            this.Empresa.HeaderText = "Empresa";
            this.Empresa.Name = "Empresa";
            // 
            // localizacao
            // 
            this.localizacao.HeaderText = "Localizacao";
            this.localizacao.Name = "localizacao";
            // 
            // Estado
            // 
            this.Estado.HeaderText = "Estado";
            this.Estado.MinimumWidth = 6;
            this.Estado.Name = "Estado";
            this.Estado.Width = 125;
            // 
            // Data_Inicio
            // 
            this.Data_Inicio.HeaderText = "Data_Inicio";
            this.Data_Inicio.MinimumWidth = 6;
            this.Data_Inicio.Name = "Data_Inicio";
            this.Data_Inicio.Width = 90;
            // 
            // Data_Fim
            // 
            this.Data_Fim.HeaderText = "Data_Fim";
            this.Data_Fim.MinimumWidth = 6;
            this.Data_Fim.Name = "Data_Fim";
            this.Data_Fim.Width = 90;
            // 
            // nr_horas
            // 
            this.nr_horas.HeaderText = "Nr_Horas";
            this.nr_horas.MinimumWidth = 6;
            this.nr_horas.Name = "nr_horas";
            this.nr_horas.Width = 90;
            // 
            // Custo
            // 
            this.Custo.HeaderText = "Custo";
            this.Custo.MinimumWidth = 6;
            this.Custo.Name = "Custo";
            this.Custo.Width = 125;
            // 
            // Admin_Historico_de_Trabalhos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(946, 547);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button7);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Admin_Historico_de_Trabalhos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Admin - Historico de Trabalhos";
            this.Load += new System.EventHandler(this.Admin_Historico_de_Trabalhos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        internal System.Windows.Forms.Button button7;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Maquina;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Empresa;
        private System.Windows.Forms.DataGridViewTextBoxColumn localizacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Estado;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_Inicio;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_Fim;
        private System.Windows.Forms.DataGridViewTextBoxColumn nr_horas;
        private System.Windows.Forms.DataGridViewTextBoxColumn Custo;
    }
}