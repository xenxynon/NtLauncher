.class public final synthetic Lcom/android/wm/shell/compatui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/i;->g:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/i;->g:Landroid/widget/CheckBox;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->d(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
