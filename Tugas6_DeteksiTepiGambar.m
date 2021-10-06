Picture = imread('mask.jpeg');
figure(1);
imshow(Picture);
title('Color');

q = rgb2gray(Picture);
figure(2);
imshow(q);
title('Gray');

%Sobel
w = edge(q,'sobel');
figure(3);
imshow(w);
title('Sobel');

%Prewitt
e = edge(q,'prewitt');
figure(4);
imshow(e);
title('Prewitt');

%Roberts
r = edge(q,'roberts');
figure(5);
imshow(r);
title('Roberts');

%Canny
t = edge(q,'canny');
figure(6);
imshow(t);
title('Canny');

%Laplacian
y = edge(q,'log');
figure(7);
imshow(y);
title('Laplacian');

%Compas
North = [1 1 1; 1 -2 1; -1 -1 -1];
South = [-1 -1 -1; 1 -2 1; 1 1 1];
East = [-1 1 1; -1 -2 1; -1 1 1];
West = [1 1 -1; 1 -2 -1; 1 1 -1];

figure(8);
imshow(conv2(q,North,'same'));
title('North Compas');

figure(9);
imshow(conv2(q,South,'same'));
title('South Compas');

figure(10);
imshow(conv2(q,East,'same'));
title('East Compas');

figure(11);
imshow(conv2(q,West,'same'));
title('West Compas');

%Isotropic
x = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
y = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];

figure(12);
imshow(conv2(q,x,'same'));
title('Horizontal');

figure(13);
imshow(conv2(q,y,'same'));
title('Vertikal');
