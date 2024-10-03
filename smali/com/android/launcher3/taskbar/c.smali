.class public final synthetic Lcom/android/launcher3/taskbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/c;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    iput p2, p0, Lcom/android/launcher3/taskbar/c;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/c;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    iget p0, p0, Lcom/android/launcher3/taskbar/c;->h:I

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->a(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;I)V

    return-void
.end method
