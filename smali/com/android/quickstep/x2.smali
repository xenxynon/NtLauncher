.class public final synthetic Lcom/android/quickstep/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x2;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/x2;->g:Landroid/view/View;

    invoke-static {p0}, Lcom/android/quickstep/OverviewCommandHelper;->a(Landroid/view/View;)V

    return-void
.end method
