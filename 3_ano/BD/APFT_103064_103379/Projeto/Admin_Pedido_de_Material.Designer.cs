namespace BD_Interface
{
    partial class Admin_Pedido_de_Material
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
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.trabalhador = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pecaid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.quant = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.data = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hora = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // button7
            // 
            this.button7.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.button7.Location = new System.Drawing.Point(10, 504);
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
            this.trabalhador,
            this.pecaid,
            this.quant,
            this.data,
            this.hora});
            this.dataGridView1.Location = new System.Drawing.Point(0, 0);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 82;
            this.dataGridView1.RowTemplate.Height = 33;
            this.dataGridView1.Size = new System.Drawing.Size(814, 455);
            this.dataGridView1.TabIndex = 147;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Verdana", 11.25F);
            this.button1.Location = new System.Drawing.Point(144, 504);
            this.button1.Margin = new System.Windows.Forms.Padding(2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(140, 32);
            this.button1.TabIndex = 148;
            this.button1.Text = "Verificar Stock";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Verdana", 11.25F);
            this.button2.Location = new System.Drawing.Point(315, 504);
            this.button2.Margin = new System.Windows.Forms.Padding(2);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(134, 32);
            this.button2.TabIndex = 149;
            this.button2.Text = "Concluir pedido";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Verdana", 11.25F);
            this.button3.Location = new System.Drawing.Point(487, 504);
            this.button3.Margin = new System.Windows.Forms.Padding(2);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(275, 32);
            this.button3.TabIndex = 150;
            this.button3.Text = "Adicionar fornecedor a pedido";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // trabalhador
            // 
            this.trabalhador.HeaderText = "Trabalhador";
            this.trabalhador.MinimumWidth = 10;
            this.trabalhador.Name = "trabalhador";
            this.trabalhador.Width = 150;
            // 
            // pecaid
            // 
            this.pecaid.HeaderText = "Nome Peca";
            this.pecaid.MinimumWidth = 10;
            this.pecaid.Name = "pecaid";
            this.pecaid.Width = 150;
            // 
            // quant
            // 
            this.quant.HeaderText = "Quant";
            this.quant.MinimumWidth = 10;
            this.quant.Name = "quant";
            this.quant.Width = 70;
            // 
            // data
            // 
            this.data.HeaderText = "Data";
            this.data.MinimumWidth = 10;
            this.data.Name = "data";
            this.data.Width = 80;
            // 
            // hora
            // 
            this.hora.HeaderText = "Hora";
            this.hora.MinimumWidth = 10;
            this.hora.Name = "hora";
            this.hora.Width = 80;
            // 
            // Admin_Pedido_de_Material
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(946, 547);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button7);
            this.Margin = new System.Windows.Forms.Padding(2, 3, 2, 3);
            this.Name = "Admin_Pedido_de_Material";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Admin - Pedido de Material";
            this.Load += new System.EventHandler(this.Admin_Pedido_de_Material_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        internal System.Windows.Forms.Button button7;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.DataGridViewTextBoxColumn trabalhador;
        private System.Windows.Forms.DataGridViewTextBoxColumn pecaid;
        private System.Windows.Forms.DataGridViewTextBoxColumn quant;
        private System.Windows.Forms.DataGridViewTextBoxColumn data;
        private System.Windows.Forms.DataGridViewTextBoxColumn hora;
    }
}