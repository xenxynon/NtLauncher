.class final enum Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BackGestureResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum UNKNOWN:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->UNKNOWN:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->UNKNOWN:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "BACK_COMPLETED_FROM_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "BACK_COMPLETED_FROM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "BACK_CANCELLED_FROM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "BACK_CANCELLED_FROM_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "BACK_NOT_STARTED_TOO_FAR_FROM_EDGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "BACK_NOT_STARTED_IN_NAV_BAR_REGION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-static {}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->$values()[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->$VALUES:[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
    .locals 1

    const-class v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
    .locals 1

    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->$VALUES:[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v0}, [Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    return-object v0
.end method
