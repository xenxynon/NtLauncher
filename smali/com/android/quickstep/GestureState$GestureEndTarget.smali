.class public final enum Lcom/android/quickstep/GestureState$GestureEndTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/GestureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEndTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/GestureState$GestureEndTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public static final enum ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public static final enum HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public static final enum LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public static final enum NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public static final enum RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;


# instance fields
.field public final containerType:I

.field public final isLauncher:Z

.field public final protoEndTarget:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public final recentsAttachedToAppWindow:Z


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v6, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/GestureState$GestureEndTarget;-><init>(Ljava/lang/String;IZIZLcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    sput-object v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    new-instance v0, Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v14, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v9, "RECENTS"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/quickstep/GestureState$GestureEndTarget;-><init>(Ljava/lang/String;IZIZLcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    sput-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    new-instance v0, Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v7, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v2, "NEW_TASK"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/GestureState$GestureEndTarget;-><init>(Ljava/lang/String;IZIZLcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    sput-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    new-instance v0, Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v14, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v9, "LAST_TASK"

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/quickstep/GestureState$GestureEndTarget;-><init>(Ljava/lang/String;IZIZLcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    sput-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    new-instance v0, Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v7, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->ALL_APPS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v2, "ALL_APPS"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/GestureState$GestureEndTarget;-><init>(Ljava/lang/String;IZIZLcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    sput-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-static {}, Lcom/android/quickstep/GestureState$GestureEndTarget;->$values()[Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->$VALUES:[Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIZLcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    iput p4, p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->containerType:I

    iput-boolean p5, p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->recentsAttachedToAppWindow:Z

    iput-object p6, p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->protoEndTarget:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 1

    const-class v0, Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 1

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->$VALUES:[Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0}, [Lcom/android/quickstep/GestureState$GestureEndTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object v0
.end method
