.class public final enum Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

.field public static final enum ACTION_NONE:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

.field public static final enum ACTION_SEEK_TO:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

.field public static final enum ACTION_SKIP_TO_NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

.field public static final enum ACTION_SKIP_TO_PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

.field public static final Companion:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;


# instance fields
.field private final action:J


# direct methods
.method private static final synthetic $values()[Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_NONE:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SKIP_TO_PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SKIP_TO_NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SEEK_TO:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const-string v1, "ACTION_NONE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_NONE:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const-string v1, "ACTION_SKIP_TO_PREVIOUS"

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SKIP_TO_PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const-string v1, "ACTION_SKIP_TO_NEXT"

    const/4 v2, 0x2

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SKIP_TO_NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    const-string v1, "ACTION_SEEK_TO"

    const/4 v2, 0x3

    const-wide/16 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->ACTION_SEEK_TO:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    invoke-static {}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->$values()[Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    move-result-object v0

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->$VALUES:[Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->action:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;
    .locals 1

    const-class v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    return-object p0
.end method

.method public static values()[Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->$VALUES:[Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;

    return-object v0
.end method


# virtual methods
.method public final getAction()J
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->action:J

    return-wide v0
.end method
