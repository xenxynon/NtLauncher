.class public final synthetic Lcom/android/launcher3/taskbar/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/i;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/i;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Landroid/view/View;)V

    return-void
.end method