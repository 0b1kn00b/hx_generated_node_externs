package serve_static;

typedef RequestHandlerConstructor<R> = {
	@:selfCall
	function call(root:String, ?options:ServeStaticOptions<R>):RequestHandler<R>;
	var mime : {
		function getType(path:String):Null<String>;
		function getExtension(mime:String):Null<String>;
		function define(mimes:mime.TypeMap, ?force:Bool):Void;
	};
};