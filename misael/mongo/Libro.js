class Libro {
  constructor(nombre, titulo, autor, editorial) {
    this.nombre = nombre;
    this.titulo = titulo;
    this.autor = autor;
    this.editorial = editorial;
  }

  toJSON() {
    return {
      nombre: this.nombre,
      titulo: this.titulo,
      autor: this.autor,
      editorial: this.editorial
    };
  }
}

module.exports = Libro;
