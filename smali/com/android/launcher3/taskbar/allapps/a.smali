.class public final synthetic Lcom/android/launcher3/taskbar/allapps/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/taskbar/allapps/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/a;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/allapps/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/a;->g:Lcom/android/launcher3/taskbar/allapps/a;

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

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;

    invoke-interface {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;->onInvalidateHeader()V

    return-void
.end method
