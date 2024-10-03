.class public final synthetic Ly/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ly/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly/d;

    invoke-direct {v0}, Ly/d;-><init>()V

    sput-object v0, Ly/d;->a:Ly/d;

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

    check-cast p1, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->b(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method
