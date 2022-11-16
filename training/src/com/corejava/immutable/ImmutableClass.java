




package com.corejava.immutable;
class Engine{
	int speed;
	Engine(int speed){
		this.speed=speed;
	}
}

public final class ImmutableClass {
	
private final int id;
private final String name;
private final Engine engine;

	
public int getId() {
	return id;
}


public String getName() {
	return name;
}
public ImmutableClass(int i, String s,Engine e) {
	this.id=i;
	this.name=s;
	Engine newEngine=new Engine(e.speed);
	this.engine=newEngine;
}
public static void main(String[] args) {
	Engine e= new Engine(30);
	ImmutableClass a= new ImmutableClass(1,"virtusa",e);
	System.out.println(a.name=="virtusa");
	System.out.println(a.engine.speed);
	e.speed=80;
	System.out.println(a.engine.speed);
}

}
