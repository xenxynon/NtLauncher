.class public final synthetic Lcom/android/quickstep/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/TISBindHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/TISBindHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/h3;->g:Lcom/android/quickstep/util/TISBindHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/h3;->g:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    return-void
.end method
