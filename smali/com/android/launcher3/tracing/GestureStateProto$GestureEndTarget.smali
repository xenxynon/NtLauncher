.class public final enum Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt1/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/GestureStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEndTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
        ">;",
        "Lt1/m$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum ALL_APPS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field private static final internalValueMap:Lt1/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/m$b<",
            "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->ALL_APPS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "HOME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "RECENTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "NEW_TASK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "LAST_TASK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "ALL_APPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->ALL_APPS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$values()[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$1;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->internalValueMap:Lt1/m$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->ALL_APPS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1

    const-class v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-virtual {v0}, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->value:I

    return p0
.end method