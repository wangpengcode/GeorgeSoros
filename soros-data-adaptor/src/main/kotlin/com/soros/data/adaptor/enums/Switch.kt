package com.soros.data.adaptor.enums

enum class Switch {
    OFF,
    ON;

    companion object {
        fun isSwitchOn(switch: String): Boolean {
            return ON.name == switch
        }

        fun isSwitchOff(switch: String): Boolean {
            return OFF.name == switch
        }
    }
}