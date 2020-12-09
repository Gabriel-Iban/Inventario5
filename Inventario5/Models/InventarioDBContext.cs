using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Inventario5.Models
{
    public partial class InventarioDBContext : DbContext
    {
        public InventarioDBContext()
        {
        }

        public InventarioDBContext(DbContextOptions<InventarioDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ElementoInventariable> ElementoInventariables { get; set; }
        public virtual DbSet<Marcaymodelo> Marcaymodelos { get; set; }
        public virtual DbSet<Monitor> Monitors { get; set; }
        public virtual DbSet<Ordenador> Ordenadors { get; set; }
        public virtual DbSet<Persona> Personas { get; set; }
        public virtual DbSet<Portatil> Portatils { get; set; }
        public virtual DbSet<Procesador> Procesadors { get; set; }
        public virtual DbSet<Ubicacion> Ubicacions { get; set; }
        public virtual DbSet<Unidad> Unidads { get; set; }
        public virtual DbSet<Workstation> Workstations { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=localhost\\SQLEXPRESS;Database=InventarioDB;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ElementoInventariable>(entity =>
            {
                entity.ToTable("elementoInventariable");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Codigo)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("codigo");

                entity.Property(e => e.IdMarcaYmodelo).HasColumnName("idMarcaYModelo");

                entity.Property(e => e.IdPersona).HasColumnName("idPersona");

                entity.Property(e => e.IdUbicacion).HasColumnName("idUbicacion");

                entity.Property(e => e.Notas)
                    .HasColumnType("text")
                    .HasColumnName("notas");

                entity.HasOne(d => d.IdMarcaYmodeloNavigation)
                    .WithMany(p => p.ElementoInventariables)
                    .HasForeignKey(d => d.IdMarcaYmodelo)
                    .HasConstraintName("FK_elementoInventariable_marcaymodelo");

                entity.HasOne(d => d.IdPersonaNavigation)
                    .WithMany(p => p.ElementoInventariables)
                    .HasForeignKey(d => d.IdPersona)
                    .HasConstraintName("FK__elementoI__idPer__2E1BDC42");

                entity.HasOne(d => d.IdUbicacionNavigation)
                    .WithMany(p => p.ElementoInventariables)
                    .HasForeignKey(d => d.IdUbicacion)
                    .HasConstraintName("FK_elementoInventariable_ubicacion");
            });

            modelBuilder.Entity<Marcaymodelo>(entity =>
            {
                entity.ToTable("marcaymodelo");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Nomb)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("nomb");
            });

            modelBuilder.Entity<Monitor>(entity =>
            {
                entity.ToTable("monitor");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.IdWorkstation).HasColumnName("idWorkstation");

                entity.Property(e => e.TamanoPantalla).HasColumnName("tamanoPantalla");

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.Monitor)
                    .HasForeignKey<Monitor>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_monitor_elementoInventariable");

                entity.HasOne(d => d.IdWorkstationNavigation)
                    .WithMany(p => p.Monitors)
                    .HasForeignKey(d => d.IdWorkstation)
                    .HasConstraintName("FK_monitor_workstation");
            });

            modelBuilder.Entity<Ordenador>(entity =>
            {
                entity.ToTable("ordenador");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.IdProcesador).HasColumnName("idProcesador");

                entity.Property(e => e.Memoria).HasColumnName("memoria");

                entity.Property(e => e.NumeroSerie)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.UnidadDiscoDuro).HasColumnName("unidadDiscoDuro");

                entity.Property(e => e.UnidadMemoria).HasColumnName("unidadMemoria");

                entity.Property(e => e.VelocidadProcesador).HasColumnName("velocidadProcesador");

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.Ordenador)
                    .HasForeignKey<Ordenador>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ordenador_elementoInventariable");

                entity.HasOne(d => d.IdProcesadorNavigation)
                    .WithMany(p => p.Ordenadors)
                    .HasForeignKey(d => d.IdProcesador)
                    .HasConstraintName("FK_ordenador_procesador");

                entity.HasOne(d => d.UnidadDiscoDuroNavigation)
                    .WithMany(p => p.OrdenadorUnidadDiscoDuroNavigations)
                    .HasForeignKey(d => d.UnidadDiscoDuro)
                    .HasConstraintName("FK_ordenador_DiscoDuro_unidad");

                entity.HasOne(d => d.UnidadMemoriaNavigation)
                    .WithMany(p => p.OrdenadorUnidadMemoriaNavigations)
                    .HasForeignKey(d => d.UnidadMemoria)
                    .HasConstraintName("FK_ordenador_memoria_unidad");
            });

            modelBuilder.Entity<Persona>(entity =>
            {
                entity.ToTable("persona");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Nomb)
                    .IsRequired()
                    .HasMaxLength(60)
                    .IsUnicode(false)
                    .HasColumnName("nomb");
            });

            modelBuilder.Entity<Portatil>(entity =>
            {
                entity.ToTable("portatil");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.TamanoPantalla).HasColumnName("tamanoPantalla");

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.Portatil)
                    .HasForeignKey<Portatil>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_portatil_ordenador");
            });

            modelBuilder.Entity<Procesador>(entity =>
            {
                entity.ToTable("procesador");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Nomb)
                    .IsRequired()
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("nomb");
            });

            modelBuilder.Entity<Ubicacion>(entity =>
            {
                entity.ToTable("ubicacion");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Nomb)
                    .IsRequired()
                    .HasMaxLength(60)
                    .IsUnicode(false)
                    .HasColumnName("nomb");
            });

            modelBuilder.Entity<Unidad>(entity =>
            {
                entity.ToTable("unidad");

                entity.Property(e => e.Id)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("id");

                entity.Property(e => e.Nomb)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nomb");
            });

            modelBuilder.Entity<Workstation>(entity =>
            {
                entity.ToTable("workstation");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.Workstation)
                    .HasForeignKey<Workstation>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_workstation_ordenador");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
