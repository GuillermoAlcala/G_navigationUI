//
//  Account.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 27/07/22.
//

import Foundation

struct Account:Identifiable {
    var name: String
    var id = UUID()//ObjectIdentifier
}

let list_Accounts:[Account] =
[
    Account(name: "Reservaciones"),
    Account(name: "Pedidos"),
    Account(name: "Dispositivos"),
    Account(name: "Servicios"),
    Account(name: "Artículos guardados"),
    Account(name: "Resúmenes de sesión")
]


let Message="No tienes nunguna reservación."
let MessageDetail="Encuentra sesiones y actividades prácticas gratuitas en el Apple Store más cercano"

