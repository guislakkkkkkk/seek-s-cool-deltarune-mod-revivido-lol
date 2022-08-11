function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.6 and curBeat > 31 and difficulty == 1 then
        setProperty('health', health- 0.022);
    end
end