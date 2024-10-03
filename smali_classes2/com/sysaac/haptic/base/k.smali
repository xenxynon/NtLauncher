.class Lcom/sysaac/haptic/base/k;
.super Lcom/sysaac/haptic/base/j;
.source "SourceFile"


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sysaac/haptic/base/j;-><init>(III)V

    iput p1, p0, Lcom/sysaac/haptic/base/j;->a:I

    iput p2, p0, Lcom/sysaac/haptic/base/j;->b:I

    iput p3, p0, Lcom/sysaac/haptic/base/j;->e:I

    iput p4, p0, Lcom/sysaac/haptic/base/j;->c:I

    iput p5, p0, Lcom/sysaac/haptic/base/j;->d:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget v2, p0, Lcom/sysaac/haptic/base/j;->a:I

    aput v2, v0, v1

    iget v1, p0, Lcom/sysaac/haptic/base/j;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/sysaac/haptic/base/j;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/sysaac/haptic/base/j;->d:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget p0, p0, Lcom/sysaac/haptic/base/j;->e:I

    const/4 v1, 0x4

    aput p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PatternHeEventPreBaked{mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sysaac/haptic/base/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRelativeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sysaac/haptic/base/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sysaac/haptic/base/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sysaac/haptic/base/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sysaac/haptic/base/j;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
