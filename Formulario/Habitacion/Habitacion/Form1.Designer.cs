namespace Habitacion
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.Pnl_Ingreso = new System.Windows.Forms.Panel();
            this.Lbl_Estatus = new System.Windows.Forms.Label();
            this.Txt_NumeroHabitacion = new System.Windows.Forms.TextBox();
            this.Lbl_NumeroHabitacion = new System.Windows.Forms.Label();
            this.Lbl_TipoHabitacion = new System.Windows.Forms.Label();
            this.Txt_Habitacion = new System.Windows.Forms.TextBox();
            this.Lbl_CodigoHabitacion = new System.Windows.Forms.Label();
            this.Pnl_botones = new System.Windows.Forms.Panel();
            this.Btn_Insertar = new System.Windows.Forms.Button();
            this.Btn_Borrar = new System.Windows.Forms.Button();
            this.Btn_Modificar = new System.Windows.Forms.Button();
            this.Btn_Guardar = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Cmb_tipo = new System.Windows.Forms.ComboBox();
            this.Cmb_estatus = new System.Windows.Forms.ComboBox();
            this.Pnl_Ingreso.SuspendLayout();
            this.Pnl_botones.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(294, 9);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(145, 20);
            this.Lbl_titulo.TabIndex = 0;
            this.Lbl_titulo.Text = "Hotel San Carlos";
            this.Lbl_titulo.Click += new System.EventHandler(this.label1_Click);
            // 
            // Pnl_Ingreso
            // 
            this.Pnl_Ingreso.BackColor = System.Drawing.SystemColors.ControlLight;
            this.Pnl_Ingreso.Controls.Add(this.Cmb_estatus);
            this.Pnl_Ingreso.Controls.Add(this.Cmb_tipo);
            this.Pnl_Ingreso.Controls.Add(this.Lbl_Estatus);
            this.Pnl_Ingreso.Controls.Add(this.Txt_NumeroHabitacion);
            this.Pnl_Ingreso.Controls.Add(this.Lbl_NumeroHabitacion);
            this.Pnl_Ingreso.Controls.Add(this.Lbl_TipoHabitacion);
            this.Pnl_Ingreso.Controls.Add(this.Txt_Habitacion);
            this.Pnl_Ingreso.Controls.Add(this.Lbl_CodigoHabitacion);
            this.Pnl_Ingreso.Location = new System.Drawing.Point(12, 70);
            this.Pnl_Ingreso.Name = "Pnl_Ingreso";
            this.Pnl_Ingreso.Size = new System.Drawing.Size(371, 175);
            this.Pnl_Ingreso.TabIndex = 1;
            this.Pnl_Ingreso.Paint += new System.Windows.Forms.PaintEventHandler(this.Pnl_Ingreso_Paint);
            // 
            // Lbl_Estatus
            // 
            this.Lbl_Estatus.AutoSize = true;
            this.Lbl_Estatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_Estatus.Location = new System.Drawing.Point(29, 129);
            this.Lbl_Estatus.Name = "Lbl_Estatus";
            this.Lbl_Estatus.Size = new System.Drawing.Size(152, 20);
            this.Lbl_Estatus.TabIndex = 6;
            this.Lbl_Estatus.Text = "Estatus Habitacion :";
            this.Lbl_Estatus.Click += new System.EventHandler(this.Lbl_Estatus_Click);
            // 
            // Txt_NumeroHabitacion
            // 
            this.Txt_NumeroHabitacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Txt_NumeroHabitacion.Location = new System.Drawing.Point(185, 97);
            this.Txt_NumeroHabitacion.Name = "Txt_NumeroHabitacion";
            this.Txt_NumeroHabitacion.Size = new System.Drawing.Size(160, 26);
            this.Txt_NumeroHabitacion.TabIndex = 5;
            // 
            // Lbl_NumeroHabitacion
            // 
            this.Lbl_NumeroHabitacion.AutoSize = true;
            this.Lbl_NumeroHabitacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_NumeroHabitacion.Location = new System.Drawing.Point(6, 97);
            this.Lbl_NumeroHabitacion.Name = "Lbl_NumeroHabitacion";
            this.Lbl_NumeroHabitacion.Size = new System.Drawing.Size(175, 20);
            this.Lbl_NumeroHabitacion.TabIndex = 4;
            this.Lbl_NumeroHabitacion.Text = "Numero de Habitacion :";
            // 
            // Lbl_TipoHabitacion
            // 
            this.Lbl_TipoHabitacion.AutoSize = true;
            this.Lbl_TipoHabitacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_TipoHabitacion.Location = new System.Drawing.Point(32, 66);
            this.Lbl_TipoHabitacion.Name = "Lbl_TipoHabitacion";
            this.Lbl_TipoHabitacion.Size = new System.Drawing.Size(149, 20);
            this.Lbl_TipoHabitacion.TabIndex = 2;
            this.Lbl_TipoHabitacion.Text = "Tipo de Habitacion :";
            // 
            // Txt_Habitacion
            // 
            this.Txt_Habitacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Txt_Habitacion.Location = new System.Drawing.Point(185, 35);
            this.Txt_Habitacion.Name = "Txt_Habitacion";
            this.Txt_Habitacion.Size = new System.Drawing.Size(160, 26);
            this.Txt_Habitacion.TabIndex = 1;
            // 
            // Lbl_CodigoHabitacion
            // 
            this.Lbl_CodigoHabitacion.AutoSize = true;
            this.Lbl_CodigoHabitacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_CodigoHabitacion.Location = new System.Drawing.Point(12, 35);
            this.Lbl_CodigoHabitacion.Name = "Lbl_CodigoHabitacion";
            this.Lbl_CodigoHabitacion.Size = new System.Drawing.Size(169, 20);
            this.Lbl_CodigoHabitacion.TabIndex = 0;
            this.Lbl_CodigoHabitacion.Text = "Codigo de Habitacion :";
            // 
            // Pnl_botones
            // 
            this.Pnl_botones.BackColor = System.Drawing.SystemColors.ControlLight;
            this.Pnl_botones.Controls.Add(this.Btn_Modificar);
            this.Pnl_botones.Controls.Add(this.Btn_Guardar);
            this.Pnl_botones.Controls.Add(this.Btn_Borrar);
            this.Pnl_botones.Controls.Add(this.Btn_Insertar);
            this.Pnl_botones.Location = new System.Drawing.Point(421, 70);
            this.Pnl_botones.Name = "Pnl_botones";
            this.Pnl_botones.Size = new System.Drawing.Size(206, 175);
            this.Pnl_botones.TabIndex = 2;
            this.Pnl_botones.Paint += new System.Windows.Forms.PaintEventHandler(this.Pnl_botones_Paint);
            // 
            // Btn_Insertar
            // 
            this.Btn_Insertar.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Insertar.Image")));
            this.Btn_Insertar.Location = new System.Drawing.Point(3, 3);
            this.Btn_Insertar.Name = "Btn_Insertar";
            this.Btn_Insertar.Size = new System.Drawing.Size(65, 65);
            this.Btn_Insertar.TabIndex = 3;
            this.Btn_Insertar.Text = "Insertar";
            this.Btn_Insertar.UseVisualStyleBackColor = true;
            // 
            // Btn_Borrar
            // 
            this.Btn_Borrar.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Borrar.Image")));
            this.Btn_Borrar.Location = new System.Drawing.Point(3, 109);
            this.Btn_Borrar.Name = "Btn_Borrar";
            this.Btn_Borrar.Size = new System.Drawing.Size(65, 66);
            this.Btn_Borrar.TabIndex = 2;
            this.Btn_Borrar.Text = "Borrar";
            this.Btn_Borrar.UseVisualStyleBackColor = true;
            // 
            // Btn_Modificar
            // 
            this.Btn_Modificar.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Modificar.Image")));
            this.Btn_Modificar.Location = new System.Drawing.Point(138, 110);
            this.Btn_Modificar.Name = "Btn_Modificar";
            this.Btn_Modificar.Size = new System.Drawing.Size(65, 65);
            this.Btn_Modificar.TabIndex = 1;
            this.Btn_Modificar.Text = "Modificar";
            this.Btn_Modificar.UseVisualStyleBackColor = true;
            // 
            // Btn_Guardar
            // 
            this.Btn_Guardar.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Btn_Guardar.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Guardar.Image")));
            this.Btn_Guardar.Location = new System.Drawing.Point(138, 0);
            this.Btn_Guardar.Name = "Btn_Guardar";
            this.Btn_Guardar.Size = new System.Drawing.Size(65, 65);
            this.Btn_Guardar.TabIndex = 0;
            this.Btn_Guardar.Text = "Guardar";
            this.Btn_Guardar.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 288);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(615, 150);
            this.dataGridView1.TabIndex = 3;
            // 
            // Cmb_tipo
            // 
            this.Cmb_tipo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Cmb_tipo.FormattingEnabled = true;
            this.Cmb_tipo.Location = new System.Drawing.Point(185, 66);
            this.Cmb_tipo.Name = "Cmb_tipo";
            this.Cmb_tipo.Size = new System.Drawing.Size(160, 28);
            this.Cmb_tipo.TabIndex = 7;
            // 
            // Cmb_estatus
            // 
            this.Cmb_estatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Cmb_estatus.FormattingEnabled = true;
            this.Cmb_estatus.Location = new System.Drawing.Point(188, 127);
            this.Cmb_estatus.Name = "Cmb_estatus";
            this.Cmb_estatus.Size = new System.Drawing.Size(157, 28);
            this.Cmb_estatus.TabIndex = 8;
            this.Cmb_estatus.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(702, 462);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.Pnl_botones);
            this.Controls.Add(this.Pnl_Ingreso);
            this.Controls.Add(this.Lbl_titulo);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Pnl_Ingreso.ResumeLayout(false);
            this.Pnl_Ingreso.PerformLayout();
            this.Pnl_botones.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Panel Pnl_Ingreso;
        private System.Windows.Forms.Panel Pnl_botones;
        private System.Windows.Forms.Label Lbl_TipoHabitacion;
        private System.Windows.Forms.TextBox Txt_Habitacion;
        private System.Windows.Forms.Label Lbl_CodigoHabitacion;
        private System.Windows.Forms.Label Lbl_NumeroHabitacion;
        private System.Windows.Forms.Label Lbl_Estatus;
        private System.Windows.Forms.TextBox Txt_NumeroHabitacion;
        private System.Windows.Forms.Button Btn_Guardar;
        private System.Windows.Forms.Button Btn_Insertar;
        private System.Windows.Forms.Button Btn_Borrar;
        private System.Windows.Forms.Button Btn_Modificar;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.ComboBox Cmb_estatus;
        private System.Windows.Forms.ComboBox Cmb_tipo;
    }
}

