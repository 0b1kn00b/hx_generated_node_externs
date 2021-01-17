class Main{
  static function main(){
    var express = Express.call();
        express.get(
          "*",
          (req, res, next) -> {
            res.writeHead(200, {"Content-Type": "text/plain"});
            res.end("Hello World\n");
          }
        );
        express.listen(3000);
  }
}