  $ (cd ../../../default && demos/demoFirst.exe)
  Class
  ([], "Program", None,
   [([Static],
     Method
     (Void, "Main", [],
      StatementBlock ([Expression (CallMethod ("E3", []));
                       Expression (Access
                                   (IdentVar ("cat"), CallMethod ("Sum", [])))])));
    ([Public; Static],
     Method
     (Void, "A3", [],
      StatementBlock ([VarDeclare
                       (None, Int, [("x", Some (ConstExpr (VInt (0))))]);
                       Try
                       (StatementBlock ([Throw (ClassCreate ("ShittyExn", []))]),
                        [], Some (StatementBlock ([Print (IdentVar ("x"))])))])));
    ([Public; Static],
     Method
     (Void, "B3", [],
      StatementBlock ([Try
                       (StatementBlock ([Expression (CallMethod ("A3", []))]),
                        [(Some ((CsClass ("ShittyExn"), Some (IdentVar ("e")))),
                          Some (Access
                                (IdentVar ("e"), CallMethod ("Filter", []))),
                          StatementBlock ([Print (ConstExpr (VString ("B")))]))],
                        None)])));
    ([Public; Static],
     Method
     (Void, "C3", [],
      StatementBlock ([Try
                       (StatementBlock ([Expression (CallMethod ("B3", []))]),
                        [(Some ((CsClass ("ShittyExn"), Some (IdentVar ("e")))),
                          Some (Access
                                (IdentVar ("e"), CallMethod ("Filter", []))),
                          StatementBlock ([Print (ConstExpr (VString ("C")))]))],
                        None)])));
    ([Public; Static],
     Method
     (Void, "D3", [],
      StatementBlock ([Try
                       (StatementBlock ([Expression (CallMethod ("C3", []))]),
                        [(Some ((CsClass ("ShittyExn"), Some (IdentVar ("e")))),
                          Some (Access
                                (IdentVar ("e"), CallMethod ("Filter", []))),
                          StatementBlock ([Print (ConstExpr (VString ("D")))]))],
                        None)])));
    ([Public; Static],
     Method
     (Void, "E3", [],
      StatementBlock ([Try
                       (StatementBlock ([Expression (CallMethod ("D3", []))]),
                        [(Some ((CsClass ("ShittyExn"), Some (IdentVar ("e")))),
                          Some (Access
                                (IdentVar ("e"), CallMethod ("Filter", []))),
                          StatementBlock ([Print (ConstExpr (VString ("E")))]))],
                        None)])))])
  Class
  ([], "ShittyExn", Some ("Exception"),
   [([Public],
     Constructor
     ("ShittyExn", [],
      StatementBlock ([Expression (Assign (IdentVar ("f"), IdentVar ("f")))])));
    ([Public],
     Method
     (Bool, "Filter", [],
      StatementBlock ([Return (Some (CallMethod ("f", [])))])))])

