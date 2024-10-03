.class public final synthetic Lcom/nothing/launcher/popup/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/popup/d;->a:Ly5/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/d;->a:Ly5/l;

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->b(Ly5/l;Ljava/lang/Object;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
