.class final enum Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/NavBarGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NavBarGestureResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum HOME_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum HOME_OR_OVERVIEW_CANCELLED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum OVERVIEW_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

.field public static final enum UNKNOWN:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->UNKNOWN:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_CANCELLED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->UNKNOWN:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "HOME_GESTURE_COMPLETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "OVERVIEW_GESTURE_COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "HOME_NOT_STARTED_TOO_FAR_FROM_EDGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    const-string v1, "HOME_OR_OVERVIEW_CANCELLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_CANCELLED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-static {}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->$values()[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->$VALUES:[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .locals 1

    const-class v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .locals 1

    sget-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->$VALUES:[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v0}, [Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    return-object v0
.end method
