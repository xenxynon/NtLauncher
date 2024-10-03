.class public final Lx1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/n;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p7

    instance-of v1, v0, Lx1/n$a$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lx1/n$a$a;

    iget v2, v1, Lx1/n$a$a;->o:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lx1/n$a$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v1, Lx1/n$a$a;

    invoke-direct {v1, v0}, Lx1/n$a$a;-><init>(Lq5/d;)V

    :goto_0
    iget-object v0, v1, Lx1/n$a$a;->n:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v10

    iget v2, v1, Lx1/n$a$a;->o:I

    const/4 v11, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v11, :cond_1

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v1, Lx1/n$a$a;->m:Ljava/lang/Object;

    check-cast v2, Lx1/m;

    iget-object v3, v1, Lx1/n$a$a;->l:Ljava/lang/Object;

    check-cast v3, Lw1/a;

    iget-object v4, v1, Lx1/n$a$a;->k:Ljava/lang/Object;

    check-cast v4, Lx1/e;

    iget-object v5, v1, Lx1/n$a$a;->j:Ljava/lang/Object;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, v1, Lx1/n$a$a;->i:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    iget-object v7, v1, Lx1/n$a$a;->h:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    iget-object v8, v1, Lx1/n$a$a;->g:Ljava/lang/Object;

    check-cast v8, Lx1/n;

    :try_start_0
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v5

    move-object v14, v6

    move-object v13, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v15, v5

    move-object v14, v6

    move-object v13, v7

    :goto_1
    move-object v12, v8

    goto/16 :goto_7

    :cond_3
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Ln5/l;->h:Ln5/l$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v12, p0

    :try_start_2
    iput-object v12, v1, Lx1/n$a$a;->g:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v13, p1

    :try_start_3
    iput-object v13, v1, Lx1/n$a$a;->h:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v14, p2

    :try_start_4
    iput-object v14, v1, Lx1/n$a$a;->i:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v15, p3

    :try_start_5
    iput-object v15, v1, Lx1/n$a$a;->j:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v1, Lx1/n$a$a;->k:Ljava/lang/Object;

    move-object/from16 v8, p5

    iput-object v8, v1, Lx1/n$a$a;->l:Ljava/lang/Object;

    move-object/from16 v7, p6

    iput-object v7, v1, Lx1/n$a$a;->m:Ljava/lang/Object;

    iput v3, v1, Lx1/n$a$a;->o:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v1

    invoke-interface/range {v2 .. v9}, Lx1/n;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v0, v10, :cond_4

    return-object v10

    :cond_4
    move-object/from16 v4, p4

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    move-object v8, v12

    :goto_2
    :try_start_6
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v8

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v12, p0

    :goto_3
    move-object/from16 v13, p1

    :goto_4
    move-object/from16 v14, p2

    :goto_5
    move-object/from16 v15, p3

    :goto_6
    move-object/from16 v4, p4

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    :goto_7
    sget-object v5, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    :goto_8
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v2

    new-instance v3, Lx1/n$a$b;

    const/16 v20, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lx1/n$a$b;-><init>(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)V

    iput-object v0, v1, Lx1/n$a$a;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Lx1/n$a$a;->h:Ljava/lang/Object;

    iput-object v0, v1, Lx1/n$a$a;->i:Ljava/lang/Object;

    iput-object v0, v1, Lx1/n$a$a;->j:Ljava/lang/Object;

    iput-object v0, v1, Lx1/n$a$a;->k:Ljava/lang/Object;

    iput-object v0, v1, Lx1/n$a$a;->l:Ljava/lang/Object;

    iput-object v0, v1, Lx1/n$a$a;->m:Ljava/lang/Object;

    iput v11, v1, Lx1/n$a$a;->o:I

    invoke-static {v2, v3, v1}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    :goto_9
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method
