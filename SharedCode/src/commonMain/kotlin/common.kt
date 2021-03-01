package com.jetbrains.handson.mpp.mobile

import kotlin.time.Duration

expect fun platformName(): String

fun createApplicationScreenMessage(): String {
    return "Kotlin Rocks on ${platformName()}"
}

fun wrapper(): Wrapper {
    return Wrapper(
        MyInlineClass(1.23)
    )
}

data class Wrapper(
    val myInlineClass : MyInlineClass?
)
inline class MyInlineClass(val value: Double){

    override fun toString(): String {
        return "I am no double"
    }
}
