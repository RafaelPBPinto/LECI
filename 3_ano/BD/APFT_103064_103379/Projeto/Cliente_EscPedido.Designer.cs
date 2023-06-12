
namespace BD_Interface
{
    partial class Cliente_EscPedido
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
            this.button_man = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.button_cons = new System.Windows.Forms.Button();
            this.button_back = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button_man
            // 

            this.button_man.Location = new System.Drawing.Point(248, 204);
            this.button_man.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.button_man.Name = "button_man";
            this.button_man.Size = new System.Drawing.Size(138, 108);
            this.button_man.TabIndex = 0;
            this.button_man.Text = "Manutencao";
            this.button_man.UseVisualStyleBackColor = true;
            this.button_man.Click += new System.EventHandler(this.button_man_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

            this.label1.Location = new System.Drawing.Point(386, 81);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(142, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tipo de pedido";
            // 
            // button_cons
            // 

            this.button_cons.Location = new System.Drawing.Point(538, 204);
            this.button_cons.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.button_cons.Name = "button_cons";
            this.button_cons.Size = new System.Drawing.Size(146, 108);
            this.button_cons.TabIndex = 2;
            this.button_cons.Text = "Construcao";
            this.button_cons.UseVisualStyleBackColor = true;
            this.button_cons.Click += new System.EventHandler(this.button_cons_Click);
            // 
            // button_back
            // 
            this.button_back.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button_back.Font = new System.Drawing.Font("Verdana", 11.25F);

            this.button_back.Location = new System.Drawing.Point(31, 493);
            this.button_back.Name = "button_back";
            this.button_back.Size = new System.Drawing.Size(107, 30);
            this.button_back.TabIndex = 3;
            this.button_back.Text = "Voltar";
            this.button_back.UseVisualStyleBackColor = true;
            this.button_back.Click += new System.EventHandler(this.button_back_Click);
            // 
            // Cliente_EscPedido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnablePreventFocusChange;

            this.ClientSize = new System.Drawing.Size(946, 547);
            this.Controls.Add(this.button_back);
            this.Controls.Add(this.button_cons);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button_man);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "Cliente_EscPedido";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Cliente - Tipo de Pedido";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button_man;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button_cons;
        private System.Windows.Forms.Button button_back;
    }
}