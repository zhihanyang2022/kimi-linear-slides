# Kimi Linear — slides

Beamer slides walking through the attention lineage behind
[Kimi Linear](https://arxiv.org/abs/2510.26692) (arXiv:2510.26692):

1. **Making Attention Cheaper (Still Quadratic)** — MHA, MLA (training /
   inference), and the MLA-vs-MHA evidence from DeepSeek-V2.
2. **Making Linear Attention Work** — linear attention, DeltaNet,
   Gated DeltaNet, and Kimi Delta Attention (KDA).
3. **Making the MLP Cheaper** — MoE (placeholder).

Notation follows the Kimi Linear paper; MLA notation follows DeepSeek-V2/V3.

## Build

Requires [tectonic](https://tectonic-typesetting.github.io/) (self-contained
LaTeX engine) and `pymupdf` for the PNG previews.

```sh
./build.sh          # -> main.pdf + preview/slide-NN.png
```

Override the engine with `TECTONIC=/path/to/tectonic ./build.sh`.

## Files

| file | what |
|---|---|
| `main.tex` | the slides |
| `preamble.tex` | theme, colours, shared TikZ styles |
| `build.sh` | build + render previews |
| `fig-kimi-arch.pdf` | Figure 3 of the Kimi Linear paper (see below) |

## Attribution

`fig-kimi-arch.pdf` is Figure 3 of *Kimi Linear: An Expressive, Efficient
Attention Architecture* (Kimi Team, 2025), arXiv:2510.26692, which is
released under **CC BY-NC-ND 4.0**.
