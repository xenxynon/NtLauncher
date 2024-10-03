.class public final synthetic Lcom/android/launcher3/taskbar/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/j;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iput p2, p0, Lcom/android/launcher3/taskbar/j;->h:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/j;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iget p0, p0, Lcom/android/launcher3/taskbar/j;->h:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;ILandroid/view/View;)V

    return-void
.end method
