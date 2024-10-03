.class public final synthetic Lcom/android/launcher3/taskbar/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

.field public final synthetic h:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/f;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/f;->h:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/f;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/f;->h:Landroid/widget/ImageView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->f(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
