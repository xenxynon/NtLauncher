.class public final synthetic Ly/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Ly/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly/c;

    invoke-direct {v0}, Ly/c;-><init>()V

    sput-object v0, Ly/c;->g:Ly/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->a(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)V

    return-void
.end method
