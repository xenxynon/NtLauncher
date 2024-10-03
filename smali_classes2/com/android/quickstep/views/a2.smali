.class public final synthetic Lcom/android/quickstep/views/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/popup/SystemShortcut;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a2;->g:Lcom/android/launcher3/popup/SystemShortcut;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/a2;->g:Lcom/android/launcher3/popup/SystemShortcut;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
