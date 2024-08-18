APP       = main
OCAMLC    = ocamlc
OCAMLOPT  = ocamlopt
OCAMLDEP  = ocamldep

INCLUDES     =             # all relevant -I options here
OCAMLFLAGS   = $(INCLUDES) # add other options for ocamlc here
OCAMLOPTFLAGS= $(INCLUDES) # add other options for ocamlopt here

OBJS   = parser.cmo lexer.cmo main.cmo
DEPEND  = lexer.ml parser.ml parser.mli

all: .depend $(APP)

include .depend

$(APP): $(OBJS)
	@echo Linking $@
	$(OCAMLC) -o $@ $(OCAMLFLAGS) $(OBJS)

# Common rules
.SUFFIXES: .ml .mli .cmo .cmi .cmx

.mli.cmi:
	$(OCAMLC) $(OCAMLFLAGS) -c $<

.ml.cmo:
	$(OCAMLC) $(OCAMLFLAGS) -c $<

.ml.cmx:
	$(OCAMLOPT) $(OCAMLOPTFLAGS) -c $<

parser.ml parser.mli: parser.mly
	@rm -f $@
	ocamlyacc -v $<
	@chmod +w $@

lexer.ml: lexer.mll
	@rm -f $@
	ocamllex $<
	@chmod +w $@

clean:
	rm -f main
	rm -f *.cm[iox]
	rm -f *~
	rm -f lexer.ml
	rm -f parser.ml parser.mli parser.output
	rm -f .depend

.depend: $(DEPEND)
	$(OCAMLDEP) $(INCLUDES) *.mli *.ml > .depend
