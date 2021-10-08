//
//  ViewController.swift
//  Escuela
//
//  Created by Alumno on 10/7/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaAlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        
        return celda
    }
    
    
    var alumnos: [Alumno] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Pedro Perez", matricula: "124578", correo: "pedro07@escuela.com", celular: "6444000000", carrera: "Ingenieria Civil"))
        alumnos.append(Alumno(nombre: "Gustavo García", matricula: "189047", correo: "gustavo@escuela.com", celular: "6444105620", carrera: "Licenciado en derecho"))
        alumnos.append(Alumno(nombre: "María Gomez", matricula: "167834", correo: "maria03@escuela.com", celular: "6444222222", carrera: "Ingienería en Producción Multimedia"))
    }


}

