.class public final synthetic Lcom/android/wm/shell/compatui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Lcom/android/wm/shell/compatui/CompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/g;->g:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/g;->g:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->c(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
