.class public final synthetic Lcom/android/wm/shell/compatui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Ljava/util/function/Consumer;

.field public final synthetic h:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/k;->g:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/k;->h:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/k;->g:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/k;->h:Landroid/widget/CheckBox;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->f(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
