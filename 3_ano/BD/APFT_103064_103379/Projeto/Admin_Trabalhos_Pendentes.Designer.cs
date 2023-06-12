namespace BD_Interface
{
    partial class Admin_Trabalhos_Pendentes
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
            this.button3 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.nome_maquina = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nome_empresa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.localizacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_Inicio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // button3
            // 
            this.button3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button3.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.button3.Location = new System.Drawing.Point(3, 505);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(96, 32);
            this.button3.TabIndex = 146;
            this.button3.Text = "Voltar";
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nome_maquina,
            this.nome_empresa,
            this.localizacao,
            this.Data_Inicio});
            this.dataGridView1.Location = new System.Drawing.Point(3, 1);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(941, 462);
            this.dataGridView1.TabIndex = 147;
            // 
            // button1
            // 
            this.button1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button1.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.button1.Location = new System.Drawing.Point(736, 505);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(200, 32);
            this.button1.TabIndex = 148;
            this.button1.Text = "Marcar como Feito";
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button2.Font = new System.Drawing.Font("Verdana", 11.25F);
            this.button2.Location = new System.Drawing.Point(987, 970);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(420, 65);
            this.button2.TabIndex = 149;
            this.button2.Text = "Adicionar trabalhador";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Verdana", 11.25F);
            this.button4.Location = new System.Drawing.Point(288, 507);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(286, 30);
            this.button4.TabIndex = 149;
            this.button4.Text = "Adicionar trabalhador a trabalho";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // nome_maquina
            // 
            this.nome_maquina.HeaderText = "Nome Maquina";
            this.nome_maquina.Name = "nome_maquina";
            this.nome_maquina.ReadOnly = true;
            this.nome_maquina.Width = 200;
            // 
            // nome_empresa
            // 
            this.nome_empresa.HeaderText = "Nome Empresa";
            this.nome_empresa.Name = "nome_empresa";
            this.nome_empresa.ReadOnly = true;
            this.nome_empresa.Width = 200;
            // 
            // localizacao
            // 
            this.localizacao.HeaderText = "Localizacao";
            this.localizacao.Name = "localizacao";
            this.localizacao.Width = 150;
            // 
            // Data_Inicio
            // 
            this.Data_Inicio.HeaderText = "Data_Inicio";
            this.Data_Inicio.MinimumWidth = 6;
            this.Data_Inicio.Name = "Data_Inicio";
            this.Data_Inicio.Width = 200;
            // 
            // Admin_Trabalhos_Pendentes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(946, 547);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button3);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Admin_Trabalhos_Pendentes";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Admin - Trabalhos Pendentes";
            this.Load += new System.EventHandler(this.Admin_Trabalhos_Pendentes_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        internal System.Windows.Forms.Button button3;
        private System.Windows.Forms.DataGridView dataGridView1;
        internal System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.DataGridViewTextBoxColumn nome_maquina;
        private System.Windows.Forms.DataGridViewTextBoxColumn nome_empresa;
        private System.Windows.Forms.DataGridViewTextBoxColumn localizacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_Inicio;
    }
}