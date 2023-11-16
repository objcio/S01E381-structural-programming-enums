import Foundation

public protocol Structural {
    associatedtype Structure
    var to: Structure { get }
    static func from(_ s: Structure) -> Self
}

public struct Struct<Properties> {
    public init(name: String, properties: Properties) {
        self.name = name
        self.properties = properties
    }

    public var name: String
    public var properties: Properties
}

public struct Enum<Cases> {
    public init(name: String, cases: Cases) {
        self.name = name
        self.cases = cases
    }

    public var name: String
    public var cases: Cases
}

public struct Property<Value> {
    public init(name: String, value: Value) {
        self.name = name
        self.value = value
    }

    public var name: String
    public var value: Value
}

public struct List<Head, Tail> {
    public init(head: Head, tail: Tail) {
        self.head = head
        self.tail = tail
    }

    public var head: Head
    public var tail: Tail
}

public enum Choice<First, Second> {
    case first(First)
    case second(Second)
}

public struct Empty {
    public init() { }
}

public enum Nothing {}
