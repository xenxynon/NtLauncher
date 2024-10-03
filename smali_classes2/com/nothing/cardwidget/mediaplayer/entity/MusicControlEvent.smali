.class public final enum Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

.field public static final enum NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

.field public static final enum PAUSE:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

.field public static final enum PLAY:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

.field public static final enum PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PLAY:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PAUSE:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const-string v1, "PLAY"

    const/4 v2, 0x0

    const-string v3, "play_music"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PLAY:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const-string v1, "PAUSE"

    const/4 v2, 0x1

    const-string v3, "pause_music"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PAUSE:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const-string v1, "PREVIOUS"

    const/4 v2, 0x2

    const-string v3, "previous_music"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    const-string v1, "NEXT"

    const/4 v2, 0x3

    const-string v3, "next_music"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    invoke-static {}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->$values()[Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    move-result-object v0

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->$VALUES:[Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;
    .locals 1

    const-class v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    return-object p0
.end method

.method public static values()[Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->$VALUES:[Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    return-object v0
.end method


# virtual methods
.method public final getEvent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->event:Ljava/lang/String;

    return-object p0
.end method
