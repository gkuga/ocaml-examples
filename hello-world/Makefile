APP       = main
OCAMLC    = ocamlc
OCAMLOPT  = ocamlopt
OCAMLDEP  = ocamldep

INCLUDES     =             # all relevant -I options here
OCAMLFLAGS   = $(INCLUDES) # add other options for ocamlc here
OCAMLOPTFLAGS= $(INCLUDES) # add other options for ocamlopt here

OBJS   = main.cmo

all: $(APP)

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

clean:
	rm -f main
	rm -f *.cm[iox]
	rm -f *~
