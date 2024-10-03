.class public final enum Lcom/android/quickstep/GestureState$TrackpadGestureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/GestureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackpadGestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/GestureState$TrackpadGestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum MULTI_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/quickstep/GestureState$TrackpadGestureType;

    sget-object v1, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$TrackpadGestureType;->MULTI_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "MULTI_FINGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->MULTI_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "THREE_FINGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "FOUR_FINGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    invoke-static {}, Lcom/android/quickstep/GestureState$TrackpadGestureType;->$values()[Lcom/android/quickstep/GestureState$TrackpadGestureType;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->$VALUES:[Lcom/android/quickstep/GestureState$TrackpadGestureType;

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

.method public static getTrackpadGestureType(Landroid/view/MotionEvent;)Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadFourFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->MULTI_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 1

    const-class v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 1

    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->$VALUES:[Lcom/android/quickstep/GestureState$TrackpadGestureType;

    invoke-virtual {v0}, [Lcom/android/quickstep/GestureState$TrackpadGestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object v0
.end method
