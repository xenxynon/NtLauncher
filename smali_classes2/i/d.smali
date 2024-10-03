.class public final synthetic Li/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Li/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li/d;

    invoke-direct {v0}, Li/d;-><init>()V

    sput-object v0, Li/d;->a:Li/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragController;->a(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher3/logging/InstanceId;

    move-result-object p0

    return-object p0
.end method
