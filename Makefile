LATEX= pdflatex
FIGURES= delta_g_cumulative.pdf delta_g_histogram.pdf delta_g_vs_color.pdf
FIGURES+= false_positive_differential.pdf false_positive_prob.pdf fp_vs_flux_shift.pdf

default: hybrid_focal_plane.pdf



hybrid_focal_plane.pdf: hybrid_focal_plane.tex $(addprefix figures/, $(FIGURES))
	${LATEX} $<
	${LATEX} $<

