package node.fs;

@:jsRequire("fs", "BigIntStats") extern class BigIntStats {
	function new();
	var atimeNs : js.lib.BigInt;
	var mtimeNs : js.lib.BigInt;
	var ctimeNs : js.lib.BigInt;
	var birthtimeNs : js.lib.BigInt;
	function isFile():Bool;
	function isDirectory():Bool;
	function isBlockDevice():Bool;
	function isCharacterDevice():Bool;
	function isSymbolicLink():Bool;
	function isFIFO():Bool;
	function isSocket():Bool;
	var dev : js.lib.BigInt;
	var ino : js.lib.BigInt;
	var mode : js.lib.BigInt;
	var nlink : js.lib.BigInt;
	var uid : js.lib.BigInt;
	var gid : js.lib.BigInt;
	var rdev : js.lib.BigInt;
	var size : js.lib.BigInt;
	var blksize : js.lib.BigInt;
	var blocks : js.lib.BigInt;
	var atimeMs : js.lib.BigInt;
	var mtimeMs : js.lib.BigInt;
	var ctimeMs : js.lib.BigInt;
	var birthtimeMs : js.lib.BigInt;
	var atime : js.lib.Date;
	var mtime : js.lib.Date;
	var ctime : js.lib.Date;
	var birthtime : js.lib.Date;
	static var prototype : BigIntStats;
}