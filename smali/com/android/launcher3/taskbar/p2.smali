.class public final synthetic Lcom/android/launcher3/taskbar/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/taskbar/p2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/p2;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/p2;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/p2;->g:Lcom/android/launcher3/taskbar/p2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->a()V

    return-void
.end method
