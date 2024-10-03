.class public final Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

.field private static musicIdentifyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static musicMetaData:Landroid/os/Bundle;

.field private static musicPlaybackState:Landroid/os/Bundle;

.field private static playingPosition:Landroid/os/Bundle;

.field private static widgetsEnableRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-direct {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->widgetsEnableRecords:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicIdentifyMap:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cacheData(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "bundleData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ln2/b;->m:Ln2/b$a;

    invoke-virtual {p0, p1}, Ln2/b$a;->a(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    sput-object p1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicMetaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->belongTo(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    sput-object p1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicPlaybackState:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition$Companion;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition$Companion;->belongTo(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_2

    sput-object p1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->playingPosition:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-void
.end method

.method public final clearCachedData()V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicMetaData:Landroid/os/Bundle;

    sput-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicPlaybackState:Landroid/os/Bundle;

    sput-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->playingPosition:Landroid/os/Bundle;

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicIdentifyMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicMetaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v1, p0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->parseMusicData(Landroid/os/Bundle;)Ln2/a;

    move-result-object p0

    instance-of v1, p0, Ln2/b;

    if-eqz v1, :cond_0

    check-cast p0, Ln2/b;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ln2/b;->l()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public final getCachedData()Ln5/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln5/p<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance p0, Ln5/p;

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicMetaData:Landroid/os/Bundle;

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicPlaybackState:Landroid/os/Bundle;

    sget-object v2, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->playingPosition:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Ln5/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getMusicFlag(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicIdentifyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackState()Ljava/lang/Integer;
    .locals 2

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicPlaybackState:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v1, p0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->parseMusicData(Landroid/os/Bundle;)Ln2/a;

    move-result-object p0

    instance-of v1, p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->getState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public final isWidgetEnabled(I)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->widgetsEnableRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public final markMusicFlag(ILn2/b;)V
    .locals 0

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->musicIdentifyMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ln2/b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final parseMusicData(Landroid/os/Bundle;)Ln2/a;
    .locals 1

    const-string p0, "bundleData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ln2/b;->m:Ln2/b$a;

    invoke-virtual {p0, p1}, Ln2/b$a;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ln2/b$a;->b(Landroid/os/Bundle;)Ln2/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->belongTo(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->parseData(Landroid/os/Bundle;)Ln2/a;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition$Companion;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition$Companion;->belongTo(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition$Companion;->parseData(Landroid/os/Bundle;)Ln2/a;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final setWidgetEnabled(IZ)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->widgetsEnableRecords:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
