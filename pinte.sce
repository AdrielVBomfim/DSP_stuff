function pinte(X)
  X = real(X);
  X = X - min(X);
  X = X/max(X);
  X = floor(255*X) + 1;
  xset('colormap', graycolormap(256));
  Matplot(X);
endfunction

