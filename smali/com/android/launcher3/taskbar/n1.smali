.class public final synthetic Lcom/android/launcher3/taskbar/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Landroid/widget/Switch;

.field public final synthetic h:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/n1;->g:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/n1;->h:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/n1;->g:Landroid/widget/Switch;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/n1;->h:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->c(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V

    return-void
.end method
