.class public final synthetic Lcom/android/launcher3/taskbar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    iput p2, p0, Lcom/android/launcher3/taskbar/d;->h:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/d;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    iget p0, p0, Lcom/android/launcher3/taskbar/d;->h:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->b(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;ILjava/util/ArrayList;)V

    return-void
.end method
