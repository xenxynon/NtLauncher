.class public final synthetic Ln/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/v;->a:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Ln/v;->a:Ljava/util/function/Predicate;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->i(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
