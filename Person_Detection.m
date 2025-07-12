cam = webcam;
detector = peopleDetectorACF();

for i = 1:100
    frame = snapshot(cam);
    [bboxes, scores] = detect(detector, frame);
    if ~isempty(bboxes)
        frame = insertObjectAnnotation(frame, 'rectangle', bboxes, scores);
    end
    imshow(frame);
    title('Real-Time Person Detection');
    pause(0.1);
end

clear cam;

