.class public final Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;-><init>()V

    return-void
.end method

.method private final supportNextAction(B)Z
    .locals 2

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SKIP_TO_NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->getAction()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    and-int/2addr p0, p1

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final supportPreviousAction(B)Z
    .locals 2

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SKIP_TO_PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->getAction()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    and-int/2addr p0, p1

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final supportSeekAction(B)Z
    .locals 2

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SEEK_TO:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->getAction()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    and-int/2addr p0, p1

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final supportSlideNext(B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportNextAction(B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportSeekAction(B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final supportSlidePrevious(B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportPreviousAction(B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportSeekAction(B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
