.class public final synthetic Lcom/android/launcher3/taskbar/allapps/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/c;->a:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    return-void
.end method


# virtual methods
.method public final onInvalidateHeader()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/c;->a:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
