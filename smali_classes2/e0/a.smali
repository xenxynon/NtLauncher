.class public final synthetic Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/search/SearchCallback;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/a;->g:Lcom/android/launcher3/search/SearchCallback;

    iput-object p2, p0, Le0/a;->h:Ljava/lang/String;

    iput-object p3, p0, Le0/a;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le0/a;->g:Lcom/android/launcher3/search/SearchCallback;

    iget-object v1, p0, Le0/a;->h:Ljava/lang/String;

    iget-object p0, p0, Le0/a;->i:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->d(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
