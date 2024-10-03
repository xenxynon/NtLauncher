.class public final synthetic Lcom/android/launcher3/taskbar/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d0;->g:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iput p2, p0, Lcom/android/launcher3/taskbar/d0;->h:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/d0;->g:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iget p0, p0, Lcom/android/launcher3/taskbar/d0;->h:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->w(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V

    return-void
.end method
