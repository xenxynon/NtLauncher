.class public final synthetic Landroidx/room/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/h0;->g:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Landroidx/room/h0;->h:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/h0;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/room/h0;->g:Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/h0;->h:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/h0;->i:Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase;->f(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
